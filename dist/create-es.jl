original = read("./msgpack.min.js", String)

bad = """!function(t){if("object"==typeof exports&&"undefined"!=typeof module)module.exports=t();else if("function"==typeof define&&define.amd)define([],t);else{var r;r="undefined"!=typeof window?window:"undefined"!=typeof global?global:"undefined"!=typeof self?self:this,r.msgpack=t()}}"""
good = """const msgpack = ((silly_function) => silly_function())"""

exporter = """\nexport default msgpack;"""

write("./msgpack-es.min.mjs", replace(original, bad => good) * exporter)